class ApiConstant {

  static const baseUrl="http://10.0.80.75:6003/api/v1";
  static const fetchDataUrl="http://10.0.80.75:6003/";
  static const fetchDataUrl2="http://10.0.80.75:6003";

  ///<================= For Auth And Home part ====================>
  static const create_user = "/user";
  static const auth_login = "/auth/login";
  static const forgot_password = "/auth/forgot-password";
  static const verify_email = "/auth/verify-email";
  static const reset_password = "/auth/reset-password";
  static const resend_otp = "/auth/resend-otp";
  static const get_profile = "/user/profile";
  static const change_password = "/user/change-password";
  static const update_profile = "/user";
  static const user_info = "/user/info";
  static const create_post = "/post";
  static const fetch_post = "/post";
  static const like = "/like";
  static const create_comment = "/comment";
  static const add_story = "/story";
  static const fetch_story = "/story";
  static const make_save = "/bookmark";
  static const delete_account = "/user/delete-account";
  static const interest_selection = "/user/interest";
  static String storyDetails(var id)=>"/story/$id";
  static String postData(var id)=>"/post/$id";


///<================ Friends and Group ===================>

  static const suggest_friends = "/friends/suggestion-friends";
  static const remove_from_suggestion = "/remove";
  static const get_all_friends = "/friends/all-friends";
  static const friend_request = "/friends/friend-request";
  static const my_friends = "/friends/friends";
  static const send_request = "/friends/friend-request";
  static const removed_friend = "/friends/remove-friend";
  static const accept_request = "/friends/accept-request";
  static const cancel_request = "/friends/cancel-request";
  static const remove_request = "/friends/remove-request";
  static const remove_friend = "/friends/remove-friend";
  static const create_group = "/group";
  static const get_group = "/group";
  static const removed_group_member = "/group/remove-member";
  static const add_group_member = "/group/add-member";

  static String getFriendsProfile(var id) => "/friends/friend-profile/$id";

///===================== Goal =======================
  static const add_goal = "/goal";
  static const fetch_goal = "/goal";
  static String deleteGoal(var id) => "/goal/$id";

///===================== Help and Support==========
  static const term_conditions = "/rule/terms-and-conditions";
  static const about = "/rule/about";
  static const faq = "/faq";
  static const privacy_policy = "/rule/privacy-policy";

///===================== Avatar ====================
  static const my_avatar = "/transaction";
  static const buy_avatar = "/transaction";

///====================== Chat =================
  static const create_chat = "/chat";
  static const chat_list = "/chat";
  static const send_message = "/message";
  static String getMessage(var chatId) => "/message/$chatId";

///========================= Notification ===============
  static const getNotification = "/notification";

///=============== Report ======================
  static const report = "/report";


}
