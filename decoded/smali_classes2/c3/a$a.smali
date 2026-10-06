.class final Lc3/a$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lrh/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc3/a$a;

    invoke-direct {v0}, Lc3/a$a;-><init>()V

    sput-object v0, Lc3/a$a;->a:Lc3/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lrh/c;
    .locals 3

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f080954

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc3/a$a;->a()Lrh/c;

    move-result-object v0

    return-object v0
.end method
