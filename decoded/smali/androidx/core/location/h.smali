.class public final synthetic Landroidx/core/location/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lb0/a;


# direct methods
.method public synthetic constructor <init>(Lb0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/h;->a:Lb0/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/location/h;->a:Lb0/a;

    check-cast p1, Landroid/location/Location;

    invoke-interface {v0, p1}, Lb0/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
