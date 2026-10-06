.class Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;
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

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$300(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$400(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenEnable(Z)V

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$500(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$600(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->setEnabled(Z)V

    return-void
.end method
