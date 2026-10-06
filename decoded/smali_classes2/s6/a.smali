.class public final synthetic Ls6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/framerate/FrameRateView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/framerate/FrameRateView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls6/a;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ls6/a;->a:Lcom/miui/gamebooster/framerate/FrameRateView;

    invoke-static {v0}, Lcom/miui/gamebooster/framerate/FrameRateView;->a(Lcom/miui/gamebooster/framerate/FrameRateView;)V

    return-void
.end method
