.class public Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a:Z

    iput-boolean p2, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b:Z

    return-void
.end method

.method public static a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;
    .locals 5

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->O()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->x()I

    move-result v0

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    move v4, v3

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->B()Z

    move-result v2

    :goto_0
    move v3, v2

    :cond_3
    :goto_1
    new-instance v0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    invoke-direct {v0, v2, v3}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b:Z

    return v0
.end method
