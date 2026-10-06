.class Lcom/miui/antispam/ui/activity/BaseListActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;->j0(IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->c:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iput p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->a:I

    iput-wide p3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->b:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->c:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sync_dirty"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->c:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
