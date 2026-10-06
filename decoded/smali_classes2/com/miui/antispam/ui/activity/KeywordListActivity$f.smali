.class Lcom/miui/antispam/ui/activity/KeywordListActivity$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->d0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->d0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v3, 0x7f121a7a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->e0(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->d0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
