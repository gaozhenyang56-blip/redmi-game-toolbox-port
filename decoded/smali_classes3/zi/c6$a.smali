.class public Lzi/c6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lzi/h6;

.field private b:Lzi/q6;


# direct methods
.method public constructor <init>(Lzi/h6;Lzi/q6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi/c6$a;->a:Lzi/h6;

    iput-object p2, p0, Lzi/c6$a;->b:Lzi/q6;

    return-void
.end method


# virtual methods
.method public a(Lzi/r5;)V
    .locals 1

    iget-object v0, p0, Lzi/c6$a;->a:Lzi/h6;

    invoke-interface {v0, p1}, Lzi/h6;->b(Lzi/r5;)V

    return-void
.end method

.method public b(Lzi/u6;)V
    .locals 1

    iget-object v0, p0, Lzi/c6$a;->b:Lzi/q6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lzi/q6;->a(Lzi/u6;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lzi/c6$a;->a:Lzi/h6;

    invoke-interface {v0, p1}, Lzi/h6;->a(Lzi/u6;)V

    :cond_1
    return-void
.end method
