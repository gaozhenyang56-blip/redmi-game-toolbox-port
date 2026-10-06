.class Lcom/miui/apppredict/activity/FolderSearchActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/activity/FolderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/FolderSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->s0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->s0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->s0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/FolderSearchActivity;->s0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$c;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->s0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
