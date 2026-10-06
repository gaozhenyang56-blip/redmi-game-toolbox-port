.class Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$000(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/FastOpenConfig;->contains(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$112(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;I)I

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$200(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$000(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/miui/luckymoney/config/FastOpenConfig;->set(Ljava/lang/String;Z)Z

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$000(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->saveConfig()V

    return-void
.end method
