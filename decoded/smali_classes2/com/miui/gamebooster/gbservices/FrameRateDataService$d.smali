.class final Lcom/miui/gamebooster/gbservices/FrameRateDataService$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/gbservices/FrameRateDataService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/gbservices/FrameRateDataService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$d;->a:Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;

    iget-object v1, p0, Lcom/miui/gamebooster/gbservices/FrameRateDataService$d;->a:Lcom/miui/gamebooster/gbservices/FrameRateDataService;

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;-><init>(Lcom/miui/gamebooster/gbservices/FrameRateDataService;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/gbservices/FrameRateDataService$d;->a()Lcom/miui/gamebooster/gbservices/FrameRateDataService$c;

    move-result-object v0

    return-object v0
.end method
