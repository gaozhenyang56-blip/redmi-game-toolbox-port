.class Lcom/miui/antispam/ui/activity/BaseListActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;->r0(Landroid/view/ActionMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/ActionMode;

.field final synthetic c:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;ZLandroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->c:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iput-boolean p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->a:Z

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->b:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->c:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/activity/BaseListActivity;->i0()V

    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->c:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/BaseListActivity;->d0(Lcom/miui/antispam/ui/activity/BaseListActivity;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$e;->b:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
