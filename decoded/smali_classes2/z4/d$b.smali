.class Lz4/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Landroid/os/IBinder;

.field final synthetic f:Lz4/d;


# direct methods
.method public constructor <init>(Lz4/d;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz4/d$b;->f:Lz4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz4/d$b;->a:Ljava/lang/String;

    iput p3, p0, Lz4/d$b;->b:I

    iput p4, p0, Lz4/d$b;->c:I

    iput-object p5, p0, Lz4/d$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lz4/d$b;->f:Lz4/d;

    invoke-static {v0}, Lz4/d;->c(Lz4/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lz4/d$b;->e:Landroid/os/IBinder;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lz4/d$b;->f:Lz4/d;

    invoke-static {p1}, Lz4/d;->c(Lz4/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lz4/d$b;->f:Lz4/d;

    invoke-static {v0}, Lz4/d;->c(Lz4/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz4/d$b;->e:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 9

    const-string v0, "MIUISafety-Terminal"

    const-string v1, "remote binderDied, stop terminal tip now."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lz4/d$b;->f:Lz4/d;

    iget-object v3, p0, Lz4/d$b;->a:Ljava/lang/String;

    iget v4, p0, Lz4/d$b;->b:I

    iget v6, p0, Lz4/d$b;->c:I

    iget-object v7, p0, Lz4/d$b;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v8, 0xa

    invoke-virtual/range {v2 .. v8}, Lz4/d;->f(Ljava/lang/String;IZILjava/lang/String;I)Z

    invoke-virtual {p0}, Lz4/d$b;->b()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lz4/d$b;

    iget v2, p0, Lz4/d$b;->b:I

    iget v3, p1, Lz4/d$b;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lz4/d$b;->c:I

    iget v3, p1, Lz4/d$b;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lz4/d$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lz4/d$b;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lz4/d$b;->d:Ljava/lang/String;

    iget-object p1, p1, Lz4/d$b;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lz4/d$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lz4/d$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lz4/d$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lz4/d$b;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
