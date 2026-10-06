.class public Lmiuix/autodensity/k;
.super Lwk/d;
.source "SourceFile"

# interfaces
.implements Lmiuix/autodensity/j;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwk/d;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0
    invoke-super {p0}, Lwk/d;->onCreate()V
    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
