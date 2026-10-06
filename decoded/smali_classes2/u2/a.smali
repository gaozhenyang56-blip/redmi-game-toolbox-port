.class public Lu2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/a$d;
    }
.end annotation


# static fields
.field private static final m:Landroid/net/Uri;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/antivirus/result/d0;

.field private d:Landroid/animation/AnimatorSet;

.field private e:Landroid/animation/AnimatorSet;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicLong;

.field private j:Z

.field private k:Lu2/a$d;

.field private l:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.voiceassist.xiaoai.manager.provider/ui/appearance_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lu2/a;->m:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lu2/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lu2/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->j:Z

    new-instance v0, Lu2/a$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lu2/a$a;-><init>(Lu2/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lu2/a;->l:Landroid/database/ContentObserver;

    iput-object p1, p0, Lu2/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lu2/a;)Z
    .locals 0

    invoke-direct {p0}, Lu2/a;->o()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lu2/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lu2/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Lu2/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lu2/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic d(Lu2/a;)Z
    .locals 0

    iget-boolean p0, p0, Lu2/a;->f:Z

    return p0
.end method

.method static synthetic e(Lu2/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lu2/a;->f:Z

    return p1
.end method

.method static synthetic f(Lu2/a;)Z
    .locals 0

    iget-boolean p0, p0, Lu2/a;->j:Z

    return p0
.end method

.method static synthetic g(Lu2/a;)Lcom/miui/antivirus/result/d0;
    .locals 0

    iget-object p0, p0, Lu2/a;->c:Lcom/miui/antivirus/result/d0;

    return-object p0
.end method

.method static synthetic h(Lu2/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lu2/a;->g:Z

    return p1
.end method

.method static synthetic i(Lu2/a;)Lu2/a$d;
    .locals 0

    iget-object p0, p0, Lu2/a;->k:Lu2/a$d;

    return-object p0
.end method

.method static synthetic j(Lu2/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lu2/a;->b:Landroid/view/View;

    return-object p0
.end method

.method private o()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lu2/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lu2/a;->m:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "show"

    const-string v3, "appearance_status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "SidekickHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sidekick provider error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static t(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SidekickHelper"

    const-string v1, "sendExitOpToSidekick: Exit Sidekick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.voiceassist.query.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "voice_assist_start_from_key"

    const-string v2, "com.miui.securitycenter.security_scan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.voiceassist"

    const-string v2, "com.xiaomi.voiceassistant.SpeechQueryService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SidekickHelper"

    const-string v1, "sendQueryToSidekick: Call Sidekick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lq2/b$a;->b()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.voiceassist.query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "voice_assist_start_from_key"

    const-string v2, "com.miui.securitycenter.security_scan"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "assist_query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "assist_text_shown"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.miui.voiceassist"

    const-string v1, "com.xiaomi.voiceassistant.SpeechQueryService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public k()V
    .locals 2

    iget-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lu2/a;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lu2/a;->k:Lu2/a$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public l()V
    .locals 8

    iget-object v0, p0, Lu2/a;->k:Lu2/a$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lu2/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu2/a;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lu2/a;->b:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lu2/a;->b:Landroid/view/View;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lu2/a;->b:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    const-string v6, "scaleY"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v3, v6, v1

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    new-instance v1, Lu2/a$c;

    invoke-direct {v1, p0}, Lu2/a$c;-><init>(Lu2/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lu2/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu2/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu2/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu2/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lu2/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu2/a;->t(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lu2/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lu2/a;->g:Z

    return-void
.end method

.method public n(Landroid/view/View;Lcom/miui/antivirus/result/d0;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0d96

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lu2/a;->b:Landroid/view/View;

    iput-object p2, p0, Lu2/a;->c:Lcom/miui/antivirus/result/d0;

    new-instance p1, Lu2/a$d;

    invoke-direct {p1, p0}, Lu2/a$d;-><init>(Lu2/a;)V

    iput-object p1, p0, Lu2/a;->k:Lu2/a$d;

    iget-object p1, p0, Lu2/a;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public p()Z
    .locals 4

    iget-object v0, p0, Lu2/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu2/a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lu2/a;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lu2/a;->g:Z

    return v0
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lu2/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lu2/a;->m:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lu2/a;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidekickHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lu2/a;->j:Z

    return-void
.end method

.method public w()Z
    .locals 9

    iget-object v0, p0, Lu2/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lu2/a;->c:Lcom/miui/antivirus/result/d0;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lu2/a;->b:Landroid/view/View;

    const v2, 0x7f0b0a73

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lu2/a$b;

    invoke-direct {v2, p0}, Lu2/a$b;-><init>(Lu2/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lu2/a;->c:Lcom/miui/antivirus/result/d0;

    iget-object v2, p0, Lu2/a;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/d0;->w(Landroid/view/View;)V

    invoke-static {}, Lq2/b$a;->c()V

    iget-object v0, p0, Lu2/a;->d:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu2/a;->e:Landroid/animation/AnimatorSet;

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lu2/a;->d:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lu2/a;->b:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lu2/a;->b:Landroid/view/View;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lu2/a;->b:Landroid/view/View;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    const-string v8, "scaleY"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lu2/a;->d:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v3, v5, v0

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lu2/a;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lu2/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lu2/b;->b(Landroid/content/Context;)Lu2/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lu2/b;->h(J)V

    iget-object v1, p0, Lu2/a;->k:Lu2/a$d;

    iget-object v2, p0, Lu2/a;->c:Lcom/miui/antivirus/result/d0;

    invoke-virtual {v2}, Lcom/miui/antivirus/result/d0;->z()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    :cond_3
    :goto_0
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lu2/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lu2/a;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidekickHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
