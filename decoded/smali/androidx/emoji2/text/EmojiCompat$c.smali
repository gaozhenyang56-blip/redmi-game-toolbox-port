.class public abstract Landroidx/emoji2/text/EmojiCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field final a:Landroidx/emoji2/text/EmojiCompat$g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/EmojiCompat$e;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:I

.field h:I

.field i:Landroidx/emoji2/text/EmojiCompat$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/emoji2/text/EmojiCompat$g;)V
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff0100

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$c;->g:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$c;->h:I

    new-instance v0, Landroidx/emoji2/text/e$b;

    invoke-direct {v0}, Landroidx/emoji2/text/e$b;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$c;->i:Landroidx/emoji2/text/EmojiCompat$d;

    const-string v0, "metadataLoader cannot be null."

    invoke-static {p1, v0}, Lb0/h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$c;->a:Landroidx/emoji2/text/EmojiCompat$g;

    return-void
.end method


# virtual methods
.method protected final a()Landroidx/emoji2/text/EmojiCompat$g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$c;->a:Landroidx/emoji2/text/EmojiCompat$g;

    return-object v0
.end method

.method public b(I)Landroidx/emoji2/text/EmojiCompat$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/emoji2/text/EmojiCompat$c;->h:I

    return-object p0
.end method
