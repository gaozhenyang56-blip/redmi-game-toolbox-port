.class Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->c([JLandroid/util/SparseBooleanArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseBooleanArray;

.field final synthetic b:[J

.field final synthetic c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$h;Landroid/util/SparseBooleanArray;[J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->a:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->b:[J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object v2, v2, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->b:[J

    array-length v1, v0

    if-ge p1, v1, :cond_3

    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    aget-wide v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/provider/BatchOperation;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;->a:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
