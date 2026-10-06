.class public Lgd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.mfashiongallery.emag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.miui.mishare.connectivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.miui.miwallpaper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.baidu.input_mi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.iflytek.inputmethod.miui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lgd/a;->a:Ljava/util/HashSet;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
