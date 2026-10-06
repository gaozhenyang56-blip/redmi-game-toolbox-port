.class public Lcom/miui/gamebooster/model/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ln6/c;

.field private b:Ln6/h;

.field private c:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 8

    sget-object v1, Ln6/h;->b:Ln6/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    sget-object v1, Ln6/h;->b:Ln6/h;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln6/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->a:Ln6/c;

    iput p2, p0, Lcom/miui/gamebooster/model/n;->c:I

    sget-object p1, Ln6/h;->b:Ln6/h;

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->b:Ln6/h;

    return-void
.end method

.method public constructor <init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/gamebooster/model/n;->e:I

    iput-object p3, p0, Lcom/miui/gamebooster/model/n;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gamebooster/model/n;->g:Ljava/lang/String;

    iput p5, p0, Lcom/miui/gamebooster/model/n;->c:I

    iput-object p6, p0, Lcom/miui/gamebooster/model/n;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->b:Ln6/h;

    iput-object p7, p0, Lcom/miui/gamebooster/model/n;->i:Ljava/lang/String;

    invoke-static {p2}, Lt6/a;->e(I)Ln6/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->a:Ln6/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/model/n$a;->a:[I

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "mimarket://details?id=com.xiaomi.macro&detailStyle=3"

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "mimarket://details?id=com.xiaomi.migameservice&detailStyle=3"

    :goto_1
    iput-object v0, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/n;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ln6/h;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->b:Ln6/h;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/n;->c:I

    return v0
.end method

.method public l()Ln6/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/n;->a:Ln6/c;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/n;->l:Z

    return v0
.end method

.method public n(Landroid/content/Context;)Z
    .locals 7

    sget-object v0, Ln6/c;->x:Ln6/c;

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/n;->l()Ln6/c;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, La8/j2;->h(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, La8/j2;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/gamebooster/model/n;->m:J

    sub-long/2addr v3, v5

    invoke-static {}, La8/o0;->d()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/model/n;->m()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->k:Ljava/lang/String;

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/model/n;->m:J

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->d:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/n;->l:Z

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->j:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameBoxFunctionItem{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/model/n;->a:Ln6/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mToolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/model/n;->b:Ln6/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/model/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/model/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFunctionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/gamebooster/model/n;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mImgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeeplink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMentionType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mBubbleTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasRedPointShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/gamebooster/model/n;->l:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", clickTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/gamebooster/model/n;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", depApkData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTrackTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/model/n;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->f:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/n;->o:Ljava/lang/String;

    return-void
.end method

.method public w(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/model/n;->c:I

    return-void
.end method
