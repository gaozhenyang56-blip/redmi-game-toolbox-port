.class public Lcom/miui/earthquakewarning/model/AreaCodeResult$ChargeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/model/AreaCodeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChargeBean"
.end annotation


# instance fields
.field private charge:Z

.field private price:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/AreaCodeResult$ChargeBean;->price:D

    return-wide v0
.end method

.method public isCharge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/model/AreaCodeResult$ChargeBean;->charge:Z

    return v0
.end method

.method public setCharge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/model/AreaCodeResult$ChargeBean;->charge:Z

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/AreaCodeResult$ChargeBean;->price:D

    return-void
.end method
