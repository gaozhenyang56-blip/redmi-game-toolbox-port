.class Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->p0()V
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

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$d;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->k0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
