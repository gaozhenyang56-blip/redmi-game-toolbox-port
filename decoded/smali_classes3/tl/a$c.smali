.class public abstract Ltl/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Ltl/a$a;


# direct methods
.method constructor <init>(Ltl/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltl/a$c;->a:Ltl/a$a;

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method abstract b()Z
.end method

.method abstract c()V
.end method

.method d()V
    .locals 0

    return-void
.end method
