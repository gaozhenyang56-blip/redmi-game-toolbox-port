.class Lcom/miui/antispam/ui/activity/KeywordListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity;->q0()V
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

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\uff0c"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v1, 0x7f121a7a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "data"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->n0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sim_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->m0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v1, 0x7f121a7b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const p2, 0x7f121a79

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method
