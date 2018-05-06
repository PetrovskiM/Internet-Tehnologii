namespace ItLab3.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangesToId2 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Friends", "FriendNum", c => c.Int(nullable: false));
            DropColumn("dbo.Friends", "FriendId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Friends", "FriendId", c => c.Int(nullable: false));
            DropColumn("dbo.Friends", "FriendNum");
        }
    }
}
