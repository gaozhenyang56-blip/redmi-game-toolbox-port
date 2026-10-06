.class Lzi/j3$a;
.super Lzi/j3$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lzi/j3;


# direct methods
.method constructor <init>(Lzi/j3;)V
    .locals 0

    iput-object p1, p0, Lzi/j3$a;->c:Lzi/j3;

    invoke-direct {p0, p1}, Lzi/j3$b;-><init>(Lzi/j3;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lzi/j3$a;->c:Lzi/j3;

    invoke-static {v0}, Lzi/j3;->g(Lzi/j3;)V

    return-void
.end method
