.class Ltl/b$f;
.super Ltl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltl/b;-><init>(Ltl/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ltl/e;

.field final synthetic c:Ltl/b;


# direct methods
.method constructor <init>(Ltl/b;Ljava/lang/String;Ltl/e;)V
    .locals 0

    iput-object p1, p0, Ltl/b$f;->c:Ltl/b;

    iput-object p3, p0, Ltl/b$f;->b:Ltl/e;

    invoke-direct {p0, p2}, Ltl/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)F
    .locals 0

    iget-object p1, p0, Ltl/b$f;->b:Ltl/e;

    invoke-virtual {p1}, Ltl/e;->a()F

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;F)V
    .locals 0

    iget-object p1, p0, Ltl/b$f;->b:Ltl/e;

    invoke-virtual {p1, p2}, Ltl/e;->b(F)V

    return-void
.end method
