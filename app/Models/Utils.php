<?php

namespace App\Models;

use Berkayk\OneSignal\OneSignalClient;
use Carbon\Carbon;
use Encore\Admin\Facades\Admin;
use Exception;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Mail;
use SplFileObject;

class Utils extends Model
{
    use HasFactory;

    //get unique text
    static function get_unique_text()
    {
        return time() . "-" . rand(100000, 1000000) . '-' . rand(100000, 1000000);
    }

    //mail sender
    public static function mail_sender($data)
    {
        $template = 'mail-1';
        try {
            if (empty($data['email']) || !filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
                throw new Exception('Invalid or missing recipient email address.');
            } 
            $MAIL_FROM_ADDRESS = env('MAIL_FROM_ADDRESS');
            if (empty(env('MAIL_FROM_ADDRESS')) || !filter_var(env('MAIL_FROM_ADDRESS'), FILTER_VALIDATE_EMAIL)) {
                $MAIL_FROM_ADDRESS = "skills@comfarnet.org";
            } 
            $data['from_mail'] = $MAIL_FROM_ADDRESS;  
            Mail::send(
                $template,
                [
                    'body' => $data['body'],
                    'title' => $data['subject'],
                    'subject' => $data['subject']
                ],
                function ($m) use ($data) {
                    $m->to($data['email'], $data['name'])
                        ->subject($data['subject'] . ' - ' . date('Y-m-d'));
                    $m->from($data['from_mail'], $data['subject']);
                }
            );
        } catch (\Throwable $th) {
            throw new Exception($th->getMessage());
        }
    }


    public static function get_stripe()
    {
        return '';
    }
    public static function sync_orders()
    {
        return ''; 
    }

    public static function sync_products()
    {

        return; 
    }
    public static function sendNotification(
        $msg,
        $receiver,
        $headings = 'U-LITS',
        $data = null,
        $url = null,
        $buttons = null,
        $schedule = null,
    ) {


        try {
            $client = new OneSignalClient(
                env('ONESIGNAL_APP_ID'),
                env('ONESIGNAL_REST_API_KEY'),
                env('USER_AUTH_KEY')
            );
            $client->addParams(
                [
                    'android_channel_id' => 'a79a1fa6-8991-4c23-97b9-2cf23d697b48',
                    'large_icon' => env('APP_URL') . '/assets/logo.png',
                    'small_icon' => 'logo',
                ]
            )
                ->sendNotificationToExternalUser(
                    $msg,
                    "$receiver",
                    $url = $url,
                    $data = $data,
                    $buttons = $buttons,
                    $schedule = $schedule,
                    $headings = $headings
                );
        } catch (\Throwable $th) {
            //throw $th;
            throw $th;
        }


        return;
    }


    public static function get_user_id()
    {
        if (isset($_SERVER['HTTP_USER_ID'])) {
            return $_SERVER['HTTP_USER_ID'];
        }
        if (isset($_GET['user_id'])) {
            return $_GET['user_id'];
        }
        if (isset($_POST['user_id'])) {
            return $_POST['user_id'];
        }
    }
    public static function success($data = [], $message = "")
    {
        return (response()->json([
            'code' => 1,
            'message' => $message,
            'data' => $data
        ]));
    }

    public static function error($message = "")
    {
        return response()->json([
            'code' => 0,
            'message' => $message,
            'data' => ""
        ]);
    }


    public static function importPwdsProfiles($path)
    {
        $csv = new SplFileObject($path);
        $csv->setFlags(SplFileObject::READ_CSV);
        //$csv->setCsvControl(';');  //separator change if you need
        set_time_limit(-1); // Time in seconds
        $disability_description = [];
        $cats = [];
        $isFirst  = true;
        foreach ($csv as $line) {
            if ($isFirst) {
                $isFirst = false;
                continue;
            }

            $name = $line[0];
            $user = Person::where(['name' => $name])->first();
            if ($user == null) {
                continue;
            }
            $user->district_id = 88;
            $user->parish .= 1;
            $user->save();
            continue;



            /* if ((Person::count('id') >= 3963)) {
                die("done");
            } */

            $p = new Person();
            $p->name = 'N/A';



            $p->subcounty_description = null;
            if (
                isset($line[10]) &&
                $line[10] != null &&
                strlen($line[10]) > 2
            ) {
                $dis = $line[10];
                $_dis = Location::where(
                    'name',
                    'LIKE',
                    '%' . $dis . '%'
                )->first();
                if ($_dis != null) {
                    $p->district_id = $_dis->id;
                } else {
                    $p->district_id = 1002006;
                }
            }


            $p->subcounty_description = null;
            if (
                isset($line[8]) &&
                $line[8] != null &&
                strlen($line[8]) > 1
            ) {
                $p->dob = $line[8];
            }

            $p->subcounty_description = null;
            if (
                isset($line[7]) &&
                $line[7] != null &&
                strlen($line[7]) > 3
            ) {
                $p->caregiver_name = $line[7];
                $p->has_caregiver = 'Yes';
            } else {
                $p->has_caregiver = 'No';
            }

            $p->subcounty_description = null;
            if (
                isset($line[4]) &&
                $line[4] != null &&
                strlen($line[4]) > 3
            ) {
                $p->disability_description = $line[4];
            }

            $p->education_level = null;
            if (
                isset($line[5]) &&
                $line[5] != null &&
                strlen($line[5]) > 1
            ) {
                //$p->education_level = $line[5];
            }

            $p->job = null;
            if (
                isset($line[6]) &&
                $line[6] != null &&
                strlen($line[6]) > 1
            ) {
                $p->employment_status = 'Yes';
                $p->job = $line[6];
            } else {
                $p->employment_status = 'No';
            }

            if (
                isset($line[0]) &&
                $line[0] != null &&
                strlen($line[0]) > 2
            ) {
                $p->name = trim($line[0]);
            }

            $p->sex = 'N/A';
            if (
                isset($line[1]) &&
                $line[1] != null &&
                strlen($line[1]) > 0
            ) {
                if (strtolower(substr($line[0], 0, 1)) == 'm') {
                    $p->sex = 'Male';
                } else {
                    $p->sex = 'Female';
                }
            }

            $p->phone_number = null;
            if (
                isset($line[2]) &&
                $line[2] != null &&
                strlen($line[2]) > 5
            ) {
                $p->phone_number = Utils::prepare_phone_number($line[2]);
            }

            if (
                isset($line[3]) &&
                $line[3] != null &&
                strlen($line[3]) > 2
            ) {
                $cat =  trim(strtolower($line[3]));

                if (in_array($cat, [
                    'epilepsy'
                ])) {
                    $p->disability_id = 1;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'visual',
                    'visual impairment',
                    'deaf-blind',
                    'visual disability',
                    'visual impairmrnt',
                    'blind',
                ])) {
                    $p->disability_id = 2;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'deaf',
                    'epileosy/hard of speach',
                    'hard of hearing',
                    'hearing impairment',
                    'deaf blindness',
                    'hearing impairment',
                    'deaf-blind',
                    'youth rep (deaf )',
                    'deaf rep',
                    'deaf rep.',
                    'deaf',
                    'deafblind',
                ])) {
                    $p->disability_id = 3;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'visual disabilty',
                    "low vision",
                    "visual",
                    "visual impairment",
                ])) {
                    $p->disability_id = 4;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'intellectual disability',
                    'mental disabilty',
                    'mental disability',
                    'intellectual',
                    'interlectual',
                    'parent with interlectual',
                    'interlectual rep.',
                    'cerebral pulse',
                    'mental',
                    'mental retardation',
                    'mental health',
                    'mental illness',
                ])) {

                    $p->disability_id = 5;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'epileptic',
                    'parent with children with intellectual disability',
                    'brain injury',
                    'spine damage',
                    'epilipsy',
                    'person with epilepsy',
                    'epilepsy',
                    'hydrosphlus',
                    'epilpesy',
                    'celebral palsy',
                    'women rep .celebral palsy',
                ])) {

                    $p->disability_id = 6;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'physical',
                    'parent',
                    'physical  disability',
                    'physical disability',
                    'physical disabbility',
                    'physical disabilty',
                    'pyhsical disability',
                    'physical didability',
                    'physical diability',
                    'physical impairment',
                    'male',
                    'amputee',
                    'sickler',
                    'physical',
                    'physical impairment',
                    'parent rep',
                    'women rep.',
                    'youth rep',
                    'parent rep.',
                    'parent  rep.',
                    'parent',
                    'youth rep,',
                    'women rep',
                    'youth rep.',
                ])) {
                    $p->disability_id = 7;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'albino',
                    'albinism',
                    'person with albinism',
                    'albism',
                    'albino',
                    'albinsim',
                    'albinism',
                ])) {
                    $p->disability_id = 8;
                    $p->disability_description = $line[3];
                } elseif (in_array($cat, [
                    'little person',
                    'littleperson',
                    'liitleperson',
                    'liittleperson',
                    'little person',
                    'dwarfism',
                    'persons of short stature (little persons)',
                ])) {
                    $p->disability_id = 9;
                    $p->disability_description = $line[3];
                } else {
                    $p->disability_id = 7;
                    $p->disability_description = $line[3];
                }
            } else {
                $p->disability_id = 6;
                $p->disability_description = 'Other';
            }

            $p->subcounty_description = null;
            if (
                isset($line[2]) &&
                $line[2] != null &&
                strlen($line[2]) > 5
            ) {
                $p->phone_number = Utils::prepare_phone_number($line[2]);
            }

            $_p = Person::where(['name' => $p->name, 'district_id' => $p->district_id])->first();
            if ($_p != null) {
                echo "FOUND => $_p->name<=========<hr>";
                continue;
            }

            try {
                $p->save();
                echo $p->id . ". " . $p->name . "<hr>";
            } catch (\Throwable $th) {
                echo $th;
                echo "failed <br>";
            }
        }

        dd($disability_description);
        echo "done! with $p->id <pre>";
        die('');

        dd($path);
    }





    public static function phone_number_is_valid($phone_number)
    {
        return true;
        $phone_number = Utils::prepare_phone_number($phone_number);
        if (substr($phone_number, 0, 4) != "+256") {
            return false;
        }

        if (strlen($phone_number) != 13) {
            return false;
        }

        return true;
    }
    public static function prepare_phone_number($phone_number)
    {
        return $phone_number;
        $original = $phone_number;
        //$phone_number = '+256783204665';
        //0783204665
        if (strlen($phone_number) > 10) {
            $phone_number = str_replace("+", "", $phone_number);
            $phone_number = substr($phone_number, 3, strlen($phone_number));
        } else {
            if (substr($phone_number, 0, 1) == "0") {
                $phone_number = substr($phone_number, 1, strlen($phone_number));
            }
        }
        if (strlen($phone_number) != 9) {
            return $original;
        }
        return "+256" . $phone_number;
    }



    public static function docs_root()
    {
        return public_path();
        $r = $_SERVER['DOCUMENT_ROOT'] . "";

        if (str_contains($r, 'htdocs')) {
            $folder = env('APP_FOLDER');
            return  $folder . "/public";
        }

        if (!str_contains($r, 'home/')) {
            $r = str_replace('/public', "", $r);
            $r = str_replace('\public', "", $r);
        }

        if (!(str_contains($r, 'public'))) {
            $r = $r . "/public";
        }


        /* 
         "/home/ulitscom_html/public/storage/images/956000011639246-(m).JPG
        
        public_html/public/storage/images
        */
        return $r;
    }

    public static function upload_images_2($files, $is_single_file = false)
    {

        ini_set('memory_limit', '-1');
        if ($files == null || empty($files)) {
            return $is_single_file ? "" : [];
        }
        $uploaded_images = array();
        foreach ($files as $file) {

            if (
                isset($file['name']) &&
                isset($file['type']) &&
                isset($file['tmp_name']) &&
                isset($file['error']) &&
                isset($file['size'])
            ) {
                $ext = pathinfo($file['name'], PATHINFO_EXTENSION);
                $file_name = time() . "-" . rand(100000, 1000000) . "." . $ext;
                $destination = Utils::docs_root() . '/storage/images/' . $file_name;

                $res = move_uploaded_file($file['tmp_name'], $destination);
                if (!$res) {
                    continue;
                }
                //$uploaded_images[] = $destination;
                $uploaded_images[] = $file_name;
            }
        }

        $single_file = "";
        if (isset($uploaded_images[0])) {
            $single_file = $uploaded_images[0];
        }


        return $is_single_file ? $single_file : $uploaded_images;
    }






    public static function checkEventRegustration()
    {
        return true;
        $u = Admin::user();
        if ($u == null) {
            return;
        }

        if (!$u->complete_profile) {
            return;
        }

        $ev = EventBooking::where(['administrator_id' => $u->id, 'event_id' => 1])->first();
        if ($ev != null) {
            return;
        }


        $btn = '<a class="btn btn-lg btn-primary" href="' . admin_url('event-bookings/create?event=1') . '" >BOOK A SEAT</a>';
        admin_info(
            'NOTICE: IUIU-ALUMNI GRAND DINNER - 2023',
            "Dear {$u->name}, there is an upcoming IUIUAA Grand dinner that will take place on 10th FEB, 2023.
        Please this form to apply for your ticket now! {$btn}"
        );
    }
    public static function sync_products_categories()
    {

        $products = Product::where(['category' => null])->get();
        foreach ($products as $key => $pro) {
            $sub_cat = ProductCategory::find($pro->sub_category);
            if ($sub_cat == null) {
                $pro->sub_category = 1;
                $pro->category = 1;
                $pro->save();
                continue;
            }
            $cat = ProductCategory::find($sub_cat->parent_id);

            if ($cat == null) {
                $pro->sub_category = 1;
                $pro->category = 1;
                $pro->save();
                continue;
            }
            $pro->sub_category = $sub_cat->id;
            $pro->category = $cat->id;
            $pro->category_id = $cat->id;
            $pro->save();
        }
    }
    public static function system_boot()
    {

        return;
        foreach (
            $r = Invoice::where([
                'processed' => null
            ])->get() as $key => $inv
        ) {
            $inv->do_process();
        }


        foreach (
            $r = Candidate::where([
                'name' => null
            ])->get() as $key => $value
        ) {
            $value->name = $value->first_name . " " . $value->middle_name . " " . $value->last_name;
            $value->save();
        }
        $u = Admin::user();

        if ($u != null) {
            $r = AdminRoleUser::where([
                'user_id' => $u->id
            ])->first();
            if ($r == null) {
                $role = new AdminRoleUser();
                $role->user_id = $u->id;
                $role->role_id = 2;
                $role->save();
            }
        }
    }

    public static function start_session()
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
    }



    public static function month($t)
    {
        $c = Carbon::parse($t);
        if ($t == null) {
            return $t;
        }
        return $c->format('M - Y');
    }
    public static function my_day($t)
    {
        $c = Carbon::parse($t);
        if ($t == null) {
            return $t;
        }
        return $c->format('d M');
    }


    public static function my_date_1($t)
    {
        $c = Carbon::parse($t);
        if ($t == null) {
            return $t;
        }
        return $c->format('D - d M');
    }

    public static function my_date($t)
    {
        $c = Carbon::parse($t);
        if ($t == null) {
            return $t;
        }
        return $c->format('d M, Y');
    }

    public static function my_date_time($t)
    {
        $c = Carbon::parse($t);
        if ($t == null) {
            return $t;
        }
        return $c->format('d M, Y - h:m a');
    }

    public static function to_date_time($raw)
    {
        $t = Carbon::parse($raw);
        if ($t == null) {
            return  "-";
        }
        $my_t = $t->toDateString();

        return $my_t . " " . $t->toTimeString();
    }
    public static function number_format($num, $unit)
    {
        $num = (int)($num);
        $resp = number_format($num);
        if ($num < 2) {
            $resp .= " " . $unit;
        } else {
            $resp .= " " . Str::plural($unit);
        }
        return $resp;
    }





    public static function COUNTRIES()
    {
        $data = [];
        foreach (
            [
                '',
                "Uganda",
                "Somalia",
                "Nigeria",
                "Tanzania",
                "Kenya",
                "Sudan",
                "Rwanda",
                "Congo",
                "Afghanistan",
                "Albania",
                "Algeria",
                "American Samoa",
                "Andorra",
                "Angola",
                "Anguilla",
                "Antarctica",
                "Antigua and Barbuda",
                "Argentina",
                "Armenia",
                "Aruba",
                "Australia",
                "Austria",
                "Azerbaijan",
                "Bahamas",
                "Bahrain",
                "Bangladesh",
                "Barbados",
                "Belarus",
                "Belgium",
                "Belize",
                "Benin",
                "Bermuda",
                "Bhutan",
                "Bolivia",
                "Bosnia and Herzegovina",
                "Botswana",
                "Bouvet Island",
                "Brazil",
                "British Indian Ocean Territory",
                "Brunei Darussalam",
                "Bulgaria",
                "Burkina Faso",
                "Burundi",
                "Cambodia",
                "Cameroon",
                "Canada",
                "Cape Verde",
                "Cayman Islands",
                "Central African Republic",
                "Chad",
                "Chile",
                "China",
                "Christmas Island",
                "Cocos (Keeling Islands)",
                "Colombia",
                "Comoros",
                "Cook Islands",
                "Costa Rica",
                "Cote D'Ivoire (Ivory Coast)",
                "Croatia (Hrvatska",
                "Cuba",
                "Cyprus",
                "Czech Republic",
                "Denmark",
                "Djibouti",
                "Dominica",
                "Dominican Republic",
                "East Timor",
                "Ecuador",
                "Egypt",
                "El Salvador",
                "Equatorial Guinea",
                "Eritrea",
                "Estonia",
                "Ethiopia",
                "Falkland Islands (Malvinas)",
                "Faroe Islands",
                "Fiji",
                "Finland",
                "France",
                "France",
                "Metropolitan",
                "French Guiana",
                "French Polynesia",
                "French Southern Territories",
                "Gabon",
                "Gambia",
                "Georgia",
                "Germany",
                "Ghana",
                "Gibraltar",
                "Greece",
                "Greenland",
                "Grenada",
                "Guadeloupe",
                "Guam",
                "Guatemala",
                "Guinea",
                "Guinea-Bissau",
                "Guyana",
                "Haiti",
                "Heard and McDonald Islands",
                "Honduras",
                "Hong Kong",
                "Hungary",
                "Iceland",
                "India",
                "Indonesia",
                "Iran",
                "Iraq",
                "Ireland",
                "Israel",
                "Italy",
                "Jamaica",
                "Japan",
                "Jordan",
                "Kazakhstan",

                "Kiribati",
                "Korea (North)",
                "Korea (South)",
                "Kuwait",
                "Kyrgyzstan",
                "Laos",
                "Latvia",
                "Lebanon",
                "Lesotho",
                "Liberia",
                "Libya",
                "Liechtenstein",
                "Lithuania",
                "Luxembourg",
                "Macau",
                "Macedonia",
                "Madagascar",
                "Malawi",
                "Malaysia",
                "Maldives",
                "Mali",
                "Malta",
                "Marshall Islands",
                "Martinique",
                "Mauritania",
                "Mauritius",
                "Mayotte",
                "Mexico",
                "Micronesia",
                "Moldova",
                "Monaco",
                "Mongolia",
                "Montserrat",
                "Morocco",
                "Mozambique",
                "Myanmar",
                "Namibia",
                "Nauru",
                "Nepal",
                "Netherlands",
                "Netherlands Antilles",
                "New Caledonia",
                "New Zealand",
                "Nicaragua",
                "Niger",
                "Niue",
                "Norfolk Island",
                "Northern Mariana Islands",
                "Norway",
                "Oman",
                "Pakistan",
                "Palau",
                "Panama",
                "Papua New Guinea",
                "Paraguay",
                "Peru",
                "Philippines",
                "Pitcairn",
                "Poland",
                "Portugal",
                "Puerto Rico",
                "Qatar",
                "Reunion",
                "Romania",
                "Russian Federation",
                "Saint Kitts and Nevis",
                "Saint Lucia",
                "Saint Vincent and The Grenadines",
                "Samoa",
                "San Marino",
                "Sao Tome and Principe",
                "Saudi Arabia",
                "Senegal",
                "Seychelles",
                "Sierra Leone",
                "Singapore",
                "Slovak Republic",
                "Slovenia",
                "Solomon Islands",

                "South Africa",
                "S. Georgia and S. Sandwich Isls.",
                "Spain",
                "Sri Lanka",
                "St. Helena",
                "St. Pierre and Miquelon",
                "Suriname",
                "Svalbard and Jan Mayen Islands",
                "Swaziland",
                "Sweden",
                "Switzerland",
                "Syria",
                "Taiwan",
                "Tajikistan",
                "Thailand",
                "Togo",
                "Tokelau",
                "Tonga",
                "Trinidad and Tobago",
                "Tunisia",
                "Turkey",
                "Turkmenistan",
                "Turks and Caicos Islands",
                "Tuvalu",
                "Ukraine",
                "United Arab Emirates",
                "United Kingdom (Britain / UK)",
                "United States of America (USA)",
                "US Minor Outlying Islands",
                "Uruguay",
                "Uzbekistan",
                "Vanuatu",
                "Vatican City State (Holy See)",
                "Venezuela",
                "Viet Nam",
                "Virgin Islands (British)",
                "Virgin Islands (US)",
                "Wallis and Futuna Islands",
                "Western Sahara",
                "Yemen",
                "Yugoslavia",
                "Zaire",
                "Zambia",
                "Zimbabwe"
            ] as $key => $v
        ) {
            $data[$v] = $v;
        };
        return $data;
    }


    public static function convert_number_to_words($number)
    {

        $hyphen      = '-';
        $conjunction = ' and ';
        $separator   = ', ';
        $negative    = 'negative ';
        $decimal     = ' point ';
        $dictionary  = array(
            0                   => 'zero',
            1                   => 'one',
            2                   => 'two',
            3                   => 'three',
            4                   => 'four',
            5                   => 'five',
            6                   => 'six',
            7                   => 'seven',
            8                   => 'eight',
            9                   => 'nine',
            10                  => 'ten',
            11                  => 'eleven',
            12                  => 'twelve',
            13                  => 'thirteen',
            14                  => 'fourteen',
            15                  => 'fifteen',
            16                  => 'sixteen',
            17                  => 'seventeen',
            18                  => 'eighteen',
            19                  => 'nineteen',
            20                  => 'twenty',
            30                  => 'thirty',
            40                  => 'fourty',
            50                  => 'fifty',
            60                  => 'sixty',
            70                  => 'seventy',
            80                  => 'eighty',
            90                  => 'ninety',
            100                 => 'hundred',
            1000                => 'thousand',
            1000000             => 'million',
            1000000000          => 'billion',
            1000000000000       => 'trillion',
            1000000000000000    => 'quadrillion',
            1000000000000000000 => 'quintillion'
        );

        if (!is_numeric($number)) {
            return false;
        }

        if (($number >= 0 && (int) $number < 0) || (int) $number < 0 - PHP_INT_MAX) {
            // overflow
            trigger_error(
                'convert_number_to_words only accepts numbers between -' . PHP_INT_MAX . ' and ' . PHP_INT_MAX,
                E_USER_WARNING
            );
            return false;
        }

        if ($number < 0) {
            return $negative . Self::convert_number_to_words(abs($number));
        }

        $string = $fraction = null;

        if (strpos($number, '.') !== false) {
            list($number, $fraction) = explode('.', $number);
        }

        switch (true) {
            case $number < 21:
                $string = $dictionary[$number];
                break;
            case $number <= 100:
                $tens   = ((int) ($number / 10)) * 10;
                $units  = $number % 10;
                $string = $dictionary[$tens];
                if ($units) {
                    $string .= $hyphen . $dictionary[$units];
                }
                break;
            case $number <= 1000:
                $hundreds  = $number / 100;
                $remainder = $number % 100;
                $string = $dictionary[$hundreds] . ' ' . $dictionary[100];
                if ($remainder) {
                    $string .= $conjunction . Self::convert_number_to_words($remainder);
                }
                break;
            default:
                $baseUnit = pow(1000, floor(log($number, 1000)));
                $numBaseUnits = (int) ($number / $baseUnit);
                $remainder = $number % $baseUnit;
                $string = Self::convert_number_to_words($numBaseUnits) . ' ' . $dictionary[$baseUnit];
                if ($remainder) {
                    $string .= $remainder <= 100 ? $conjunction : $separator;
                    $string .= Self::convert_number_to_words($remainder);
                }
                break;
        }

        if (null !== $fraction && is_numeric($fraction)) {
            $string .= $decimal;
            $words = array();
            foreach (str_split((string) $fraction) as $number) {
                $words[] = $dictionary[$number];
            }
            $string .= implode(' ', $words);
        }

        return $string;
    }


    public static function create_thumbail($params = array())
    {

        ini_set('memory_limit', '-1');

        if (
            !isset($params['source']) ||
            !isset($params['target'])
        ) {
            return [];
        }



        if (!file_exists($params['source'])) {
            $img = url('assets/images/logo.png');
            return $img;
        }


        $image = new Zebra_Image();

        $image->auto_handle_exif_orientation = true;
        $image->source_path = "" . $params['source'];
        $image->target_path = "" . $params['target'];

        $size = filesize($image->source_path) / (1024 * 1024);
        if ($size < 1) {
            copy($params['source'], $params['target']);
            return;
        }

        if (isset($params['quality'])) {
            $image->jpeg_quality = $params['quality'];
        }

        $image->preserve_aspect_ratio = true;
        $image->enlarge_smaller_images = true;
        $image->preserve_time = true;
        $image->handle_exif_orientation_tag = true;

        $img_size = getimagesize($image->source_path); // returns an array that is filled with info

        $image->jpeg_quality = Utils::get_jpeg_quality(filesize($image->source_path));
        $image->preserve_aspect_ratio = true;
        $image->enlarge_smaller_images = true;
        if (!$image->resize(0, 0, ZEBRA_IMAGE_CROP_CENTER)) {
            return $image->source_path;
        } else {
            return $image->target_path;
        }
    }


    public static function get_jpeg_quality($_size)
    {
        $size = ($_size / (1024 * 1024));


        $qt = 50;
        if ($size > 5) {
            $qt = 8;
        } else if ($size > 4) {
            $qt = 8;
        } else if ($size > 2) {
            $qt = 8;
        } else if ($size > 1) {
            $qt = 20;
        } else if ($size > 0.8) {
            $qt = 40;
        } else if ($size > .5) {
            $qt = 55;
        } else {
            $qt = 60;
        }

        return $qt;
    }
}
