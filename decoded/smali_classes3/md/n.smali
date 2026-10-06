.class public final synthetic Lmd/n;
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

    check-cast p1, Lnd/d;

    check-cast p2, Lnd/d;

    invoke-static {p1, p2}, Lmd/o;->a(Lnd/d;Lnd/d;)I

    move-result p1

    return p1
.end method
