.class public Lcom/miui/maml/folme/ConfigValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDelay:J

.field public mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mFromSpeed:F

.field public mHasFromSpeed:Z

.field public mOnBeginCallback:Lm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnCompleteCallback:Lm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnUpdateCallback:Lm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRelatedProperty:Lm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Lm/b;

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Lm/b;

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Lm/b;

    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Lm/b;

    return-void
.end method
