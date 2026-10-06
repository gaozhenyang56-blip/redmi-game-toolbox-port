.class public Lcom/miui/autotask/bean/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/autotask/bean/m;->a:D

    iput-wide p3, p0, Lcom/miui/autotask/bean/m;->b:D

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/bean/m;->a:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/bean/m;->b:D

    return-wide v0
.end method
