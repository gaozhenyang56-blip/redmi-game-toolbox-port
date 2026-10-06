.class public Lra/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lra/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v1, "Doc"

    goto :goto_0

    :cond_0
    const-string v1, "doc"

    :goto_0
    sput-object v1, Lra/k$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Video"

    goto :goto_1

    :cond_1
    const-string v1, "video"

    :goto_1
    sput-object v1, Lra/k$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "Picture"

    goto :goto_2

    :cond_2
    const-string v1, "picture"

    :goto_2
    sput-object v1, Lra/k$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "Music"

    goto :goto_3

    :cond_3
    const-string v0, "music"

    :goto_3
    sput-object v0, Lra/k$a;->d:Ljava/lang/String;

    return-void
.end method
