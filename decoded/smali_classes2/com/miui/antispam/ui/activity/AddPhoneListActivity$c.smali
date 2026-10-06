.class Lcom/miui/antispam/ui/activity/AddPhoneListActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$c;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$c;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$c;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-virtual {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
