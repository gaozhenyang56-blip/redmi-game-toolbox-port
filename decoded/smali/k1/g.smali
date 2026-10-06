.class public Lk1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/g$a;
    }
.end annotation


# instance fields
.field private final a:Lk1/g$a;

.field private final b:Lj1/h;

.field private final c:Lj1/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Lk1/g$a;Lj1/h;Lj1/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/g;->a:Lk1/g$a;

    iput-object p2, p0, Lk1/g;->b:Lj1/h;

    iput-object p3, p0, Lk1/g;->c:Lj1/d;

    iput-boolean p4, p0, Lk1/g;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lk1/g$a;
    .locals 1

    iget-object v0, p0, Lk1/g;->a:Lk1/g$a;

    return-object v0
.end method

.method public b()Lj1/h;
    .locals 1

    iget-object v0, p0, Lk1/g;->b:Lj1/h;

    return-object v0
.end method

.method public c()Lj1/d;
    .locals 1

    iget-object v0, p0, Lk1/g;->c:Lj1/d;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lk1/g;->d:Z

    return v0
.end method
