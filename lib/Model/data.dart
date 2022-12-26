class Creator {
  String? id;
  String? userName;
  String? profileUrl;
  String? profession;

  Creator({
    this.id,
    this.userName,
    this.profileUrl,
    this.profession,
  });
}

List<Creator> abc = [
  Creator(
    id: "C1",
    userName: "BB Ki Vines",
    profileUrl:
        "https://www.koimoi.com/wp-content/new-galleries/2021/10/bhuvan-bam-reveals-singing-in-bars-before-youtube-fame-001.jpg",
    profession: "Youtuber",
  ),
  Creator(
    id: "C2",
    userName: "CarryMinati",
    profileUrl:
        "https://images.indianexpress.com/2020/06/carryminati-759-1.jpg",
    profession: "Youtuber",
  ),
  Creator(
    id: "C3",
    userName: "PewDiePie",
    profileUrl:
        "https://api.time.com/wp-content/uploads/2016/05/gettyimages-494848194.jpg",
    profession: "Youtuber",
  ),
  Creator(
    id: "C4",
    userName: "Technical Guruji",
    profileUrl:
        "https://www.businessinsider.in/thumb.cms?msid=73958471&width=1200&height=900",
    profession: "Youtuber",
  ),
  Creator(
    id: "C1",
    userName: "BB Ki Vines",
    profileUrl:
        "https://www.koimoi.com/wp-content/new-galleries/2021/10/bhuvan-bam-reveals-singing-in-bars-before-youtube-fame-001.jpg",
    profession: "Youtuber",
  ),
  Creator(
    id: "C2",
    userName: "CarryMinati",
    profileUrl:
        "https://images.indianexpress.com/2020/06/carryminati-759-1.jpg",
    profession: "Youtuber",
  ),
  Creator(
    id: "C3",
    userName: "PewDiePie",
    profileUrl:
        "https://api.time.com/wp-content/uploads/2016/05/gettyimages-494848194.jpg",
    profession: "Youtuber",
  ),
  Creator(
    id: "C4",
    userName: "Technical Guruji",
    profileUrl:
        "https://www.businessinsider.in/thumb.cms?msid=73958471&width=1200&height=900",
    profession: "Youtuber",
  ),
];

class DonationHistory {
  String? id;
  String? currency;
  String? amount;
  String? name;
  String? message;

  DonationHistory(this.id, this.currency, this.amount, this.name, this.message);
}
