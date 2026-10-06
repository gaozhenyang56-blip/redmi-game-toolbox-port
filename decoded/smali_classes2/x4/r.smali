.class public final synthetic Lx4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lx4/t$b;

    check-cast p2, Lx4/t$b;

    invoke-static {p1, p2}, Lx4/t;->b(Lx4/t$b;Lx4/t$b;)I

    move-result p1

    return p1
.end method
