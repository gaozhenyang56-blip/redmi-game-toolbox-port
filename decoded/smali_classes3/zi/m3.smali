.class public Lzi/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpi/a;


# instance fields
.field private a:Lpi/a;

.field private b:Lpi/a;


# direct methods
.method public constructor <init>(Lpi/a;Lpi/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi/m3;->a:Lpi/a;

    iput-object p2, p0, Lzi/m3;->b:Lpi/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lzi/m3;->a:Lpi/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lpi/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lzi/m3;->b:Lpi/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lpi/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzi/m3;->a:Lpi/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lpi/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lzi/m3;->b:Lpi/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lpi/a;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
