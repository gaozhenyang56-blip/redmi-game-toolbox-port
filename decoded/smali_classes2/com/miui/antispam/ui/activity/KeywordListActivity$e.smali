.class Lcom/miui/antispam/ui/activity/KeywordListActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->o0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
