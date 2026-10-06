.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$b;,
        Landroidx/core/app/RemoteInput$a;,
        Landroidx/core/app/RemoteInput$c;,
        Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;,
        Landroidx/core/app/RemoteInput$Source;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:I

.field private final f:Landroid/os/Bundle;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static a(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    invoke-static {p0}, Landroidx/core/app/RemoteInput$a;->b(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method static b([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x14
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->a(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/RemoteInput;->d:Z

    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/app/RemoteInput;->g:Ljava/util/Set;

    return-object v0
.end method

.method public e()[Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/RemoteInput;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroidx/core/app/RemoteInput;->e:I

    return v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/RemoteInput;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/RemoteInput;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/RemoteInput;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->e()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->e()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->d()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
