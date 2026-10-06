.class public final enum Lcom/miui/optimizecenter/widget/storage/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/optimizecenter/widget/storage/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum h:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum i:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum j:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum k:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum l:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum m:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum n:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum o:Lcom/miui/optimizecenter/widget/storage/a;

.field public static final enum p:Lcom/miui/optimizecenter/widget/storage/a;

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/miui/optimizecenter/widget/storage/a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic r:[Lcom/miui/optimizecenter/widget/storage/a;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v9, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v1, "STORAGE_TOTAL"

    const/4 v2, 0x0

    const v3, 0x7f081001

    const v4, 0x7f080ff8

    const v5, 0x7f080fef

    const v6, 0x7f060d7b

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v9, Lcom/miui/optimizecenter/widget/storage/a;->g:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v0, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v11, "STORAGE_APP_DATA"

    const/4 v12, 0x1

    const v13, 0x7f081009

    const v14, 0x7f081000

    const v15, 0x7f080ff7

    const v16, 0x7f060d83

    const v17, 0x7f121874

    const-string v18, "miui.intent.action.STORAGE_APP_INFO_LIST"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v0, Lcom/miui/optimizecenter/widget/storage/a;->h:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v1, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v20, "STORAGE_IMAGE"

    const/16 v21, 0x2

    const v22, 0x7f081008

    const v23, 0x7f080fff

    const v24, 0x7f080ff6

    const v25, 0x7f060d82

    const v26, 0x7f121879

    const-string v27, "com.android.fileexplorer.export.VIEW_HOME"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v1, Lcom/miui/optimizecenter/widget/storage/a;->i:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v2, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v11, "STORAGE_VOICE"

    const/4 v12, 0x3

    const v13, 0x7f081007

    const v14, 0x7f080ffe

    const v15, 0x7f080ff5

    const v16, 0x7f060d81

    const v17, 0x7f121875

    const-string v18, "com.android.fileexplorer.export.VIEW_HOME"

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v2, Lcom/miui/optimizecenter/widget/storage/a;->j:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v3, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v20, "STORAGE_VIDEO"

    const/16 v21, 0x4

    const v22, 0x7f081006

    const v23, 0x7f080ffd

    const v24, 0x7f080ff4

    const v25, 0x7f060d80

    const v26, 0x7f12187c

    const-string v27, "com.android.fileexplorer.export.VIEW_HOME"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v3, Lcom/miui/optimizecenter/widget/storage/a;->k:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v4, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v11, "STORAGE_APK"

    const/4 v12, 0x5

    const v13, 0x7f081005

    const v14, 0x7f080ffc

    const v15, 0x7f080ff3

    const v16, 0x7f060d7f

    const v17, 0x7f121873

    const-string v18, "miui.intent.action.GARBAGE_APK_MANAGE"

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v4, Lcom/miui/optimizecenter/widget/storage/a;->l:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v5, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v20, "STORAGE_FILE"

    const/16 v21, 0x6

    const v22, 0x7f081004

    const v23, 0x7f080ffb

    const v24, 0x7f080ff2

    const v25, 0x7f060d7e

    const v26, 0x7f121877

    const-string v27, "com.android.fileexplorer.export.VIEW_HOME"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v5, Lcom/miui/optimizecenter/widget/storage/a;->m:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v6, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v11, "STORAGE_OTHER"

    const/4 v12, 0x7

    const v13, 0x7f081003

    const v14, 0x7f080ffa

    const v15, 0x7f080ff1

    const v16, 0x7f060d7d

    const v17, 0x7f12187a

    const-string v18, "miui.intent.action.STORAGE_SYSTEM_DATA"

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v6, Lcom/miui/optimizecenter/widget/storage/a;->n:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v7, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v20, "STORAGE_SYSTEM"

    const/16 v21, 0x8

    const v22, 0x7f081002

    const v23, 0x7f080ff9

    const v24, 0x7f080ff0

    const v25, 0x7f060d7c

    const v26, 0x7f12187b

    const/16 v27, 0x0

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v27}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v7, Lcom/miui/optimizecenter/widget/storage/a;->o:Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v8, Lcom/miui/optimizecenter/widget/storage/a;

    const-string v11, "CLENER"

    const/16 v12, 0x9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v16, 0x7f060d7a

    const v17, 0x7f121876

    const-string v18, "miui.intent.action.GARBAGE_CLEANUP"

    move-object v10, v8

    invoke-direct/range {v10 .. v18}, Lcom/miui/optimizecenter/widget/storage/a;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    sput-object v8, Lcom/miui/optimizecenter/widget/storage/a;->p:Lcom/miui/optimizecenter/widget/storage/a;

    const/16 v10, 0xa

    new-array v10, v10, [Lcom/miui/optimizecenter/widget/storage/a;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v0, v10, v9

    const/4 v9, 0x2

    aput-object v1, v10, v9

    const/4 v9, 0x3

    aput-object v2, v10, v9

    const/4 v9, 0x4

    aput-object v3, v10, v9

    const/4 v9, 0x5

    aput-object v4, v10, v9

    const/4 v9, 0x6

    aput-object v5, v10, v9

    const/4 v9, 0x7

    aput-object v6, v10, v9

    const/16 v6, 0x8

    aput-object v7, v10, v6

    const/16 v6, 0x9

    aput-object v8, v10, v6

    sput-object v10, Lcom/miui/optimizecenter/widget/storage/a;->r:[Lcom/miui/optimizecenter/widget/storage/a;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/miui/optimizecenter/widget/storage/a;->q:Ljava/util/HashMap;

    const-string v7, "audio"

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "video"

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "apk"

    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "doc"

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "image"

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appData"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/optimizecenter/widget/storage/a;->a:I

    iput p4, p0, Lcom/miui/optimizecenter/widget/storage/a;->b:I

    iput p5, p0, Lcom/miui/optimizecenter/widget/storage/a;->c:I

    iput p6, p0, Lcom/miui/optimizecenter/widget/storage/a;->d:I

    iput p7, p0, Lcom/miui/optimizecenter/widget/storage/a;->e:I

    iput-object p8, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/optimizecenter/widget/storage/a;
    .locals 1

    const-class v0, Lcom/miui/optimizecenter/widget/storage/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/optimizecenter/widget/storage/a;

    return-object p0
.end method

.method public static values()[Lcom/miui/optimizecenter/widget/storage/a;
    .locals 1

    sget-object v0, Lcom/miui/optimizecenter/widget/storage/a;->r:[Lcom/miui/optimizecenter/widget/storage/a;

    invoke-virtual {v0}, [Lcom/miui/optimizecenter/widget/storage/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/optimizecenter/widget/storage/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/a;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/a;->d:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    const-string v2, "com.android.fileexplorer.export.VIEW_HOME"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lra/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lra/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fe://fe.miui.com/deeplink/page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    :cond_2
    invoke-static {p1, v0}, Leg/i;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx4/t;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lx4/t;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0}, Lx4/t;->I(Landroid/content/Intent;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    const-string v2, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "cleanNowEntry"

    invoke-static {p1}, Ldb/f;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/a;->f:Ljava/lang/String;

    const-string v2, "com.android.fileexplorer.export.VIEW_HOME"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lra/k;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_4

    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fe://fe.miui.com/deeplink/page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    const-string v2, "extraTabName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lx4/y;->t()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_5

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v1, v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {p1, v0}, Leg/i;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
