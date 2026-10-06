.class public final synthetic Lnm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lnm/b;


# direct methods
.method public synthetic constructor <init>(Lnm/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnm/a;->a:Lnm/b;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 1

    iget-object v0, p0, Lnm/a;->a:Lnm/b;

    invoke-static {v0, p1, p2, p3}, Lnm/b;->a(Lnm/b;Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void
.end method
