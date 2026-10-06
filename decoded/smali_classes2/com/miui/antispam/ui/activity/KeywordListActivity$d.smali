.class Lcom/miui/antispam/ui/activity/KeywordListActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->a:Landroid/widget/EditText;

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

    const-string p2, ",|\uff0c"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-static {p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f0(Lcom/miui/antispam/ui/activity/KeywordListActivity;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v1, 0x7f121a7b

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;->b:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v1, 0x7f121a79

    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
