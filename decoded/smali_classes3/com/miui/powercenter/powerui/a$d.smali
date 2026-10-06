.class final Lcom/miui/powercenter/powerui/a$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/powerui/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/powercenter/powerui/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/powerui/a$d;

    invoke-direct {v0}, Lcom/miui/powercenter/powerui/a$d;-><init>()V

    sput-object v0, Lcom/miui/powercenter/powerui/a$d;->a:Lcom/miui/powercenter/powerui/a$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/Water_in_charging_port.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/powerui/a$d;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
