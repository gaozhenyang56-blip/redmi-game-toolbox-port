.class public abstract Lmiuix/springback/trigger/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field static final DISTANCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiuix/springback/trigger/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnterPoint:I

.field public mTriggerPoint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/springback/trigger/a$a$a;

    invoke-direct {v0}, Lmiuix/springback/trigger/a$a$a;-><init>()V

    sput-object v0, Lmiuix/springback/trigger/a$a;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_0

    iput p1, p0, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    iput p2, p0, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not allow enterPoint < 0 or triggerPoint < 0 or triggerPoint < enterPoint!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method notifyActivated()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/a$a;->onActivated()V

    return-void
.end method

.method notifyEntered()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/a$a;->onEntered()V

    return-void
.end method

.method notifyExit()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/a$a;->onExit()V

    return-void
.end method

.method notifyFinished()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/a$a;->onFinished()V

    return-void
.end method

.method notifyTriggered()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/a$a;->onTriggered()V

    return-void
.end method

.method protected abstract onActivated()V
.end method

.method protected onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract onEntered()V
.end method

.method protected abstract onExit()V
.end method

.method protected abstract onFinished()V
.end method

.method protected abstract onTriggered()V
.end method
