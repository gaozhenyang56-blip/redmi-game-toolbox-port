.class public final Landroidx/emoji2/text/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/j$a;
    }
.end annotation


# instance fields
.field private final a:Lh0/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:[C
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroidx/emoji2/text/j$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/graphics/Typeface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;Lh0/b;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/j;->d:Landroid/graphics/Typeface;

    iput-object p2, p0, Landroidx/emoji2/text/j;->a:Lh0/b;

    new-instance p1, Landroidx/emoji2/text/j$a;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/j$a;-><init>(I)V

    iput-object p1, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/j$a;

    invoke-virtual {p2}, Lh0/b;->k()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Landroidx/emoji2/text/j;->b:[C

    invoke-direct {p0, p2}, Landroidx/emoji2/text/j;->a(Lh0/b;)V

    return-void
.end method

.method private a(Lh0/b;)V
    .locals 5

    invoke-virtual {p1}, Lh0/b;->k()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Landroidx/emoji2/text/EmojiMetadata;

    invoke-direct {v1, p0, v0}, Landroidx/emoji2/text/EmojiMetadata;-><init>(Landroidx/emoji2/text/j;I)V

    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiMetadata;->f()I

    move-result v2

    iget-object v3, p0, Landroidx/emoji2/text/j;->b:[C

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/j;->h(Landroidx/emoji2/text/EmojiMetadata;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/Typeface;Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/j;
    .locals 1
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    const-string v0, "EmojiCompat.MetadataRepo.create"

    invoke-static {v0}, Lz/f;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/emoji2/text/j;

    invoke-static {p1}, Landroidx/emoji2/text/i;->b(Ljava/nio/ByteBuffer;)Lh0/b;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/j;-><init>(Landroid/graphics/Typeface;Lh0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lz/f;->b()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Lz/f;->b()V

    throw p0
.end method


# virtual methods
.method public c()[C
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/emoji2/text/j;->b:[C

    return-object v0
.end method

.method public d()Lh0/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Lh0/b;

    return-object v0
.end method

.method e()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Lh0/b;

    invoke-virtual {v0}, Lh0/b;->l()I

    move-result v0

    return v0
.end method

.method f()Landroidx/emoji2/text/j$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/j$a;

    return-object v0
.end method

.method g()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    iget-object v0, p0, Landroidx/emoji2/text/j;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method h(Landroidx/emoji2/text/EmojiMetadata;)V
    .locals 4
    .param p1    # Landroidx/emoji2/text/EmojiMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "emoji metadata cannot be null"

    invoke-static {p1, v0}, Lb0/h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "invalid metadata codepoint length"

    invoke-static {v0, v3}, Lb0/h;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/j$a;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->c()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, p1, v2, v3}, Landroidx/emoji2/text/j$a;->c(Landroidx/emoji2/text/EmojiMetadata;II)V

    return-void
.end method
