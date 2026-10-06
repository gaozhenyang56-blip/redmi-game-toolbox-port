.class Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->d0()Landroid/view/View$OnClickListener;
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

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->i0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->j0(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity$a;->a:Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->f0()V

    return-void
.end method
