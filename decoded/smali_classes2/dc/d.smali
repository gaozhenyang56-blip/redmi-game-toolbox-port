.class public Ldc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldc/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldc/d;->a:Ljava/util/Map;

    new-instance v0, Ldc/c;

    const-string v2, "android.permission.CAMERA"

    const v3, 0x7f120572

    const v4, 0x7f120577

    const v5, 0x7f120578

    const v6, 0x7f120574

    const/4 v7, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldc/c;-><init>(Ljava/lang/String;IIIII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ldc/c;->a(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ldc/c;->a(I)V

    const v3, 0x7f080e3b

    invoke-virtual {v0, v3}, Ldc/c;->h(I)V

    sget-object v3, Ldc/d;->a:Ljava/util/Map;

    const-string v4, "android.permission.CAMERA"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldc/c;

    const-string v6, "android.permission.RECORD_AUDIO"

    const v7, 0x7f120588

    const v8, 0x7f12057e

    const v9, 0x7f12057f

    const v10, 0x7f12058a

    const/4 v11, 0x3

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ldc/c;-><init>(Ljava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Ldc/c;->a(I)V

    invoke-virtual {v0, v2}, Ldc/c;->a(I)V

    const v3, 0x7f080e36

    invoke-virtual {v0, v3}, Ldc/c;->h(I)V

    sget-object v3, Ldc/d;->a:Ljava/util/Map;

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldc/c;

    const-string v6, "miui.intent.action.NOTIFICATION_VERIFY"

    const v7, 0x7f120583

    const v8, 0x7f12057c

    const v9, 0x7f12057d

    const v10, 0x7f120585

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ldc/c;-><init>(Ljava/lang/String;IIIII)V

    const v3, 0x7f080e52

    invoke-virtual {v0, v3}, Ldc/c;->h(I)V

    sget-object v3, Ldc/d;->a:Ljava/util/Map;

    const-string v4, "miui.intent.action.NOTIFICATION_VERIFY"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldc/c;

    const-string v6, "com.miui.permission.SCREEN"

    const v7, 0x7f12058b

    const v8, 0x7f120580

    const v9, 0x7f120581

    const v10, 0x7f12058d

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ldc/c;-><init>(Ljava/lang/String;IIIII)V

    const v3, 0x7f080e59

    invoke-virtual {v0, v3}, Ldc/c;->h(I)V

    invoke-virtual {v0, v1}, Ldc/c;->a(I)V

    invoke-virtual {v0, v2}, Ldc/c;->a(I)V

    sget-object v3, Ldc/d;->a:Ljava/util/Map;

    const-string v4, "com.miui.permission.SCREEN"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldc/c;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const v7, 0x7f120575

    const v8, 0x7f12057a

    const v9, 0x7f12057b

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Ldc/c;-><init>(Ljava/lang/String;IIIII)V

    const v3, 0x7f080e5c

    invoke-virtual {v0, v3}, Ldc/c;->h(I)V

    invoke-virtual {v0, v1}, Ldc/c;->a(I)V

    invoke-virtual {v0, v2}, Ldc/c;->a(I)V

    sget-object v1, Ldc/d;->a:Ljava/util/Map;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ldc/c;
    .locals 1

    sget-object v0, Ldc/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldc/c;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ldc/d;->a(Ljava/lang/String;)Ldc/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ldc/c;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f120586

    :goto_0
    return p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x273a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.miui.permission.SCREEN"

    return-object p0

    :cond_1
    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    return-object p0

    :cond_2
    const-string p0, "android.permission.CAMERA"

    return-object p0
.end method

.method public static d(I)J
    .locals 2

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x273a

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0

    :cond_1
    const-wide v0, 0x200000000000L

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1000

    return-wide v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1a

    return p0

    :cond_0
    const-string v0, "com.miui.permission.SCREEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x273a

    return p0

    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x3b

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
