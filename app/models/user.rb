class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :jobs, through: :entries, dependent: :destroy
  
  validates :familyName, presence: true
  validates :familyNameDetail, presence: true
  validates :lastName, presence: true
  validates :lastNameDetail, presence: true
  validates :gender, presence: true
  validates :birthdate, presence: true
  validates :prefecture, presence: true
  
  
  enum gender: {
    男性:0,女性:1
  }
  
  enum prefecture: {
    北海道:0,青森県:1,岩手県:2,宮城県:3,秋田県:4,山形県:5,福島県:6,
    茨城県:7,栃木県:8,群馬県:9,埼玉県:10,千葉県:11,東京都:12,神奈川県:13,
    新潟県:14,富山県:15,石川県:16,福井県:17,山梨県:18,長野県:19,
    岐阜県:20,静岡県:21,愛知県:22,三重県:23,
    滋賀県:24,京都府:25,大阪府:26,兵庫県:27,奈良県:28,和歌山県:29,
    鳥取県:30,島根県:31,岡山県:32,広島県:33,山口県:34,
    徳島県:35,香川県:36,愛媛県:37,高知県:38,
    福岡県:39,佐賀県:40,長崎県:41,熊本県:42,大分県:43,宮崎県:44,鹿児島県:45,
    沖縄県:46
  }, _prefix: true
  
  enum workplace: {
    北海道:0,青森県:1,岩手県:2,宮城県:3,秋田県:4,山形県:5,福島県:6,
    茨城県:7,栃木県:8,群馬県:9,埼玉県:10,千葉県:11,東京都:12,神奈川県:13,
    新潟県:14,富山県:15,石川県:16,福井県:17,山梨県:18,長野県:19,
    岐阜県:20,静岡県:21,愛知県:22,三重県:23,
    滋賀県:24,京都府:25,大阪府:26,兵庫県:27,奈良県:28,和歌山県:29,
    鳥取県:30,島根県:31,岡山県:32,広島県:33,山口県:34,
    徳島県:35,香川県:36,愛媛県:37,高知県:38,
    福岡県:39,佐賀県:40,長崎県:41,熊本県:42,大分県:43,宮崎県:44,鹿児島県:45,
    沖縄県:46,リモート勤務可:47
  }, _prefix: true       
  
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

class User::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:familyName, :lastName, :familyNameDetail, :lastNameDetail, :gender, :birthdate, :prefecture])
    permit(:account_update, keys: [:familyName, :lastName, :familyNameDetail, :lastNameDetail, :gender, :birthdate, :prefecture, :firstEducation, :firstEducation, :Detail, :secondEducation, :secondEducationDetail, :thirdEducation, :thirdEducationDetail, :firstCareer, :firstCareerDetail, :secondCareer, :secondCareerDetail, :thirdCareer, :thirdCareerDetail, :certification, :reason, :duration, :strongPoint, :weakPoint, :goal, :learningResource, :informationResource, :language, :framework, :portfolio, :product, :introduction, :workplace, :monthlyOrAnnual, :salary, :startingDate])
  end
end