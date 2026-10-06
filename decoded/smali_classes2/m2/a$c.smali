.class public final Lm2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://antispam/log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm2/a;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lm2/a$c;->a:Landroid/net/Uri;

    const-string v0, "content://antispam/logconversation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lm2/a;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lm2/a$c;->b:Landroid/net/Uri;

    const-string v0, "content://antispam/log_sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lm2/a;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lm2/a$c;->c:Landroid/net/Uri;

    return-void
.end method
