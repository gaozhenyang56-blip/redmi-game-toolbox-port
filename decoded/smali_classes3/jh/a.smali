.class public final synthetic Ljh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljh/a;->a:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;

    iput-object p2, p0, Ljh/a;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljh/a;->a:Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;

    iget-object v1, p0, Ljh/a;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;->c0(Lcom/miui/zman/ui/PrivacyProtectSettingsActivity;Ljava/io/File;)V

    return-void
.end method
