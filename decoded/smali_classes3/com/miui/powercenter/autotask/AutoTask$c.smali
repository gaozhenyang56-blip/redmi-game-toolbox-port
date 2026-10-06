.class public Lcom/miui/powercenter/autotask/AutoTask$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/AutoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/AutoTask$c;->b(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    iput p2, p0, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x10

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask$c;->b:I

    return-void
.end method
