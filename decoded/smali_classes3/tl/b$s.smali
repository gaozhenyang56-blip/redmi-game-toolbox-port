.class public abstract Ltl/b$s;
.super Ltl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltl/d<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ltl/d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ltl/b$g;)V
    .locals 0

    invoke-direct {p0, p1}, Ltl/b$s;-><init>(Ljava/lang/String;)V

    return-void
.end method
