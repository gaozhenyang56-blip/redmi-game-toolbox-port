.class Lcom/miui/antispam/ui/activity/BaseListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll2/d$c;

.field final synthetic b:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;Ll2/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$b;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$b;->a:Ll2/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$b;->b:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$b;->a:Ll2/d$c;

    iget v0, p2, Ll2/d$c;->b:I

    iget-wide v1, p2, Ll2/d$c;->a:J

    iget-object p2, p2, Ll2/d$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity;->j0(IJLjava/lang/String;)V

    return-void
.end method
