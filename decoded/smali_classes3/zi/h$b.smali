.class Lzi/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lzi/h$a;


# direct methods
.method public constructor <init>(Lzi/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi/h$b;->a:Lzi/h$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method b()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lzi/h$b;->a()V

    iget-object v0, p0, Lzi/h$b;->a:Lzi/h$a;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lzi/h$b;->b()V

    return-void
.end method
