.class Lcom/miui/antispam/ui/activity/KeywordListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->k0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->m0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
