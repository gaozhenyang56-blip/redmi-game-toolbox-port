.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    }
.end annotation


# instance fields
.field private final inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final inGameAnimDelayMillis:J

.field private final notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;ILbk/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;)V
    .locals 0
    .param p1    # Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    iput-object p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    iput-wide p3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    iput-object p5, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;ILbk/g;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget-object p1, Lkk/a;->b:Lkk/a$a;

    const/16 p1, 0x14

    sget-object p2, Lkk/d;->f:Lkk/d;

    invoke-static {p1, p2}, Lkk/c;->h(ILkk/d;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkk/a;->k(J)J

    move-result-wide p3

    :cond_2
    move-wide v2, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object p6, v0

    goto :goto_2

    :cond_3
    move-object p6, p5

    :goto_2
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-wide p4, v2

    invoke-direct/range {p1 .. p6}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;ILjava/lang/Object;)Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->copy(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;)Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-object v0
.end method

.method public final component2()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    return-wide v0
.end method

.method public final component4()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-object v0
.end method

.method public final copy(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;)Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;
    .locals 7
    .param p1    # Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;JLcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    iget-object v3, p1, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    iget-object v3, p1, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    iget-wide v5, p1, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    iget-object p1, p1, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getInGameAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-object v0
.end method

.method public final getInGameAnimDelayMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    return-wide v0
.end method

.method public final getNotFirstAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-object v0
.end method

.method public final getRecallAnim()Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    invoke-static {v2, v3}, Ld7/e;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimConfig(notFirstAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->notFirstAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inGameAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inGameAnimDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->inGameAnimDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recallAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig;->recallAnim:Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
