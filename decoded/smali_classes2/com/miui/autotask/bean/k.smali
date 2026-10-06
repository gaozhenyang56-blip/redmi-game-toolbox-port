.class public Lcom/miui/autotask/bean/k;
.super Lcom/miui/autotask/bean/c;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/bean/c;-><init>()V

    iput p1, p0, Lcom/miui/autotask/bean/k;->a:I

    iput-object p2, p0, Lcom/miui/autotask/bean/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xdf

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/bean/k;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/bean/k;->b:Ljava/lang/String;

    return-object v0
.end method
