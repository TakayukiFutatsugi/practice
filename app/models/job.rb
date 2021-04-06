class Job < ApplicationRecord
  belongs_to :client
  has_many :users, through: :entries
  
  validates :title, presence: true
  validates :status, presence: true
  validates :MonthlyOrAnnual, presence: true
  validates :salary, presence: true
  validates :benefitProgram, presence: true
  validates :holiday, presence: true
  validates :description, presence: true
  
    enum status: {
    正社員:0,契約社員:1,業務委託:2,インターン:3,パート・アルバイト:4
  }
  
  enum workplace: {
    リモート勤務可:0,
    北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,
    沖縄県:47
  }
  
  enum MonthlyOrAnnual: {
    月収:0,年収:1
  }
  
  enum language: {
    Javascript:0, Ruby:1, PHP:2, Python:3, Java:4,
    C:5, Cプラスプラス:6, Cシャープ:7, Go:8, Scala:9, 
    Dart:10, Kotlin:11, Swift:12, R:13, Julia:14, COBOL:15, Perl:16, ObjectiveC:17,
    TypeScript:18, HTML・CSS:19, Firebase:20, SQL:21, GAS:22, その他:23
  }
  
  enum framework: {
    AngularJS:1, Vuejs:2, jQuery:3, Reactjs:4, Riotjs:5, Hyperapp:6,
    RubyonRails:7, Sinatra:8, cubamicroframework:9, Ramaze:10, HANAMI:11, Padrino:12,
    Laravel:13, CakePHP:14, Symfony:15, CodeIgniter:16, ZendFramework:17, Phalcon:18, Slim:19, Yii:20, FuelPHP:21, Flight:22,
    Django:23, Flask:24, Bottle:25, Tornado:26, web2Py:27,
    Struts:28, SparkFramework:29, JavaServerFaces:30, PlayFramework:31, Spring:32,
    TreeFrogFramework:33, Qt:34, Oatプラスプラス:35, crow:36, Unity:37, Cocos2dx:38,
    echo:39, gin:40, aero:41, ORM:42, gorm:43, pop:44, sqlx:45, slacker:46, aurora:47,
    PlayFramework:48, Finatra:49, SkinnyFramework:50, Lift:51, Xitrum:52, Scalatra:53,
    Flutter:54,
    Ktor:55, kara:56, SpringBoot:57, Jooby:58, javalin:59,
    perfect:60, Swifton:61, Slimane:62, Kitura:63, Express:64, Vapor:65, HTTPSwiftServer:66, ReactNative:67,
    Genie:68,
    Mojolicios:69, Dancer:70, Catalyst:71, Amon2:72, TripletaiL:73, Ark:74,
    NestJS:75, Marblejs:76,
    Sass:77, BootStrap:78, Foundation:79, UIKit:80, Bulma:81, SemanticUI:82, TailWindCSS:83, MaterializeCSS:84, newcss:85, MVPcss:86, Skelton:87, Milligram:88, Base:89, Minicss:90, PureCSS:91
  }
end
