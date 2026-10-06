.class Lcom/miui/antispam/ui/fragment/CallLogFragment$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/fragment/CallLogFragment;->h0()V
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
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/antispam/ui/fragment/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/fragment/CallLogFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lm2/f;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " "

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)I

    move-result p1

    if-ne p1, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_1
    :goto_0
    move-object v1, v5

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v0, v2, v6}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->f0(Lcom/miui/antispam/ui/fragment/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getTag()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getYellowPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)I

    move-result p1

    if-ne p1, v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object p1, v0

    :cond_6
    move-object v1, v5

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->isUserMarked()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    const v4, 0x7f120d69

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lmiui/yellowpage/YellowPagePhone;->getMarkedCount()I

    move-result v0

    iget-object v7, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100071

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-virtual {v7, v8, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)I

    move-result v0

    if-eq v0, v4, :cond_c

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a:Landroid/content/Context;

    const v0, 0x7f121934

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_4
    move-object v0, p1

    goto :goto_5

    :cond_d
    move-object v0, p1

    goto/16 :goto_0

    :goto_5
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected b(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CallLogFragment"

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    const-string v4, "mActionView"

    invoke-static {v2, v4}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const-string v4, "mExpandTitle"

    invoke-static {v2, v4}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    const-string v4, "mExpandTitleView"

    invoke-static {v2, v4}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "mExpandSubtitleView"

    invoke-static {v2, v5}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v5}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v4}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b:Lcom/miui/antispam/ui/fragment/CallLogFragment;

    invoke-static {v3}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "onPostExecute IllegalAccess error:"

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "onPostExecute NoSuchField error:"

    :goto_1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->a([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;->b(Landroid/util/Pair;)V

    return-void
.end method
