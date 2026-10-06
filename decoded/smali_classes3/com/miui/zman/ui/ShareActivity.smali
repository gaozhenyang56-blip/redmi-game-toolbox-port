.class public Lcom/miui/zman/ui/ShareActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/zman/ui/ShareActivity$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/content/Intent;

.field private e:Lcom/miui/zman/ui/ShareActivity$a;

.field private f:[I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/miui/zman/ui/ShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/zman/ui/ShareActivity;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/zman/ui/ShareActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/zman/ui/ShareActivity;->i(I)V

    return-void
.end method

.method static synthetic c(Lcom/miui/zman/ui/ShareActivity;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    return-object p0
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Landroid/content/Intent;

    const-string v3, "zman_share_sec"

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESULT_CANCELED: parse intent failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return v0

    :cond_1
    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESULT_CANCELED\uff1a action= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->j:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "return for target package is null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    instance-of v1, p1, Landroid/net/Uri;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "return for no share data"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    invoke-static {p0}, Lkh/e;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->i:Ljava/lang/String;

    invoke-static {p1}, Lkh/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return for not legacy mSrcPackageName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/zman/ui/ShareActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method private e(Ljava/lang/String;Landroid/net/Uri;ZZ)Landroid/net/Uri;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/zman/ui/ShareActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkh/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lkh/b;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v0, p3, p4}, Lkh/e;->a(Ljava/io/File;ZZ)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/zman/ui/ShareActivity;->j:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/zman/ui/ShareActivity;->k(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private f()V
    .locals 8

    const-string v0, "ShareActivity"

    const-string v1, "deal ShareFile start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/zman/ui/ShareActivity;->g()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deal ShareFile end, cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->e:Lcom/miui/zman/ui/ShareActivity$a;

    const/4 v1, 0x1

    const-wide/16 v5, 0x258

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v7, 0xa

    if-lt v2, v7, :cond_0

    sub-long/2addr v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "zman_share_sec"

    const-string v2, "dealShareFile Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private g()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, v1, Lcom/miui/zman/ui/ShareActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lih/a;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, v1, Lcom/miui/zman/ui/ShareActivity;->a:Landroid/content/Context;

    invoke-static {v3}, Lih/a;->a(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCleanImageInfo now, source size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", clearLocationState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", clearCameraInfoState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShareActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, v1, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/miui/zman/ui/ShareActivity;->h:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lkh/b;->b(Ljava/io/File;)V

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-lt v2, v7, :cond_2

    iget-object v7, v1, Lcom/miui/zman/ui/ShareActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-direct {v1, v8}, Lcom/miui/zman/ui/ShareActivity;->j(I)V

    move v7, v8

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v7, v2, :cond_9

    iget-object v13, v1, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    iget-object v14, v1, Lcom/miui/zman/ui/ShareActivity;->a:Landroid/content/Context;

    invoke-static {v13, v14}, Lkh/b;->g(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    invoke-static {v14}, Lkh/b;->f(Ljava/io/File;)Z

    move-result v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Try clear sensitive info for uri = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "\n  file = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "\n  isImage = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_8

    if-eqz v0, :cond_3

    invoke-static {v14}, Lkh/e;->c(Ljava/io/File;)Z

    move-result v12

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-eqz v3, :cond_4

    invoke-static {v14}, Lkh/e;->b(Ljava/io/File;)Z

    move-result v15

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-nez v12, :cond_6

    if-eqz v15, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14, v13, v12, v15}, Lcom/miui/zman/ui/ShareActivity;->e(Ljava/lang/String;Landroid/net/Uri;ZZ)Landroid/net/Uri;

    move-result-object v14

    if-eq v14, v13, :cond_7

    move-object v13, v14

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    move-object v13, v14

    goto :goto_4

    :goto_6
    or-int/2addr v10, v12

    or-int/2addr v11, v15

    or-int v9, v9, v16

    move/from16 v17, v0

    move/from16 v14, v16

    goto :goto_7

    :cond_8
    move/from16 v17, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    const-string v0, ", haveCameraInfo  = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", haveLocationInfo = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n  shouldClear = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n  resultUir = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v1, v7}, Lcom/miui/zman/ui/ShareActivity;->j(I)V

    move/from16 v0, v17

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "andChange by sec share? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v9, :cond_c

    const-string v0, "android.intent.extra.STREAM"

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v3, v1, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_8

    :cond_a
    iget-object v3, v1, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_8
    :try_start_2
    iget-object v0, v1, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    iget-object v0, v1, Lcom/miui/zman/ui/ShareActivity;->d:Landroid/content/Intent;

    const-string v4, "migrateExtraStreamToClipData"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v6, 0x0

    :try_start_3
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v3, v7}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    :goto_9
    :try_start_4
    const-string v3, "migrateExtraStreamToClipData Exception"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/miui/zman/ui/ShareActivity;->i:Ljava/lang/String;

    const/4 v4, 0x1

    if-le v2, v4, :cond_b

    move v8, v4

    goto :goto_b

    :cond_b
    move v8, v6

    :goto_b
    invoke-static {v0, v3, v10, v11, v8}, Lkh/a;->a(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    const-string v2, "zman_share_sec"

    const-string v3, "doCleanImageInfo exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_c
    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "zman_share_sec"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/miui/zman/ui/ShareActivity$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/miui/zman/ui/ShareActivity$a;-><init>(Lcom/miui/zman/ui/ShareActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/zman/ui/ShareActivity;->e:Lcom/miui/zman/ui/ShareActivity$a;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getExternalCacheDir is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhh/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->h:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/zman/ui/ShareActivity;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkh/b;->b(Ljava/io/File;)V

    return-void
.end method

.method private synthetic i(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const p1, 0x7f120cae

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private j(I)V
    .locals 1

    new-instance v0, Ljh/c;

    invoke-direct {v0, p0, p1}, Ljh/c;-><init>(Lcom/miui/zman/ui/ShareActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->f:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/miui/zman/ui/ShareActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lhh/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/zman/ui/ShareActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lkh/b;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    const-string v0, "com.miui.securitycenter.zman.fileProvider"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-static {}, Lhh/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "translateToContent fail : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zman_share_sec"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/zman/ZmanHelper;->isNeedSecurityShare(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "ShareActivity"

    if-nez p1, :cond_0

    const-string p1, "finish for no need sec_share"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/zman/ui/ShareActivity;->finish()V

    return-void

    :cond_0
    const-string p1, "onCreate..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lkh/f;->b(Landroid/app/Activity;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->f:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const p1, 0x7f0e002d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0b070e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0778

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lkh/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0b04ed

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/zman/ui/ShareActivity;->h()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/zman/ui/ShareActivity;->d(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/zman/ui/ShareActivity;->finish()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/zman/ui/ShareActivity;->e:Lcom/miui/zman/ui/ShareActivity$a;

    new-instance v0, Ljh/b;

    invoke-direct {v0, p0}, Ljh/b;-><init>(Lcom/miui/zman/ui/ShareActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
