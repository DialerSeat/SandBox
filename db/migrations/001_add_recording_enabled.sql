-- Run this against your Supabase project (SQL Editor, or via CLI migration).
-- I don't have write access to your live database through the connected
-- tool (confirmed: execute_sql / apply_migration both returned a
-- permission error), so this needs to be applied manually.

ALTER TABLE public.campaigns
  ADD COLUMN IF NOT EXISTS recording_enabled boolean NOT NULL DEFAULT true;

-- Defaults to true so every existing campaign keeps recording exactly as
-- it does today (recording was always-on before this toggle existed) —
-- nobody's behavior changes until they explicitly turn it off.
